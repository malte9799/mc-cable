import json
from pathlib import Path
from typing import Optional, List


class PackFormatRegistryEntry:
    def __init__(self, data: dict):
        self.id: str = data["id"]
        self.name: str = data["name"]
        self.release_target = data.get("release_target")
        self.type: str = data["type"]
        self.stable: bool = data["stable"]
        self.data_version: int = data["data_version"]
        self.protocol_version: int = data["protocol_version"]
        self.data_pack_version: int = data["data_pack_version"]
        self.data_pack_version_minor: int = data["data_pack_version_minor"]
        self.resource_pack_version: int = data["resource_pack_version"]
        self.resource_pack_version_minor: int = data["resource_pack_version_minor"]
        self.build_time: str = data["build_time"]
        self.release_time: str = data["release_time"]
        self.sha1: str = data["sha1"]

    def __str__(self):
        return self.id
    
    def __repr__(self):
        return f"<PackFormatRegistryEntry {self.id}>"
    



class PackFormatRegistry:
    """Static wrapper for pack_format_registry.json next to this script"""

    _entries: List[PackFormatRegistryEntry] = []
    _id_map: dict[str, PackFormatRegistryEntry] = {}
    _loaded: bool = False

    @classmethod
    def _load(cls):
        if cls._loaded:
            return
        path = Path(__file__).parent / "pack_format_registry.json"
        with path.open("r", encoding="utf-8") as f:
            data = json.load(f)
        cls._entries = sorted(
            [PackFormatRegistryEntry(d) for d in data],
            key=lambda e: tuple(map(int, e.id.split(".")))
        )
        cls._id_map = {e.id: e for e in cls._entries}
        cls._loaded = True

    @classmethod
    def get(cls, version: str) -> Optional[PackFormatRegistryEntry]:
        cls._load()
        return cls._id_map.get(version)

    @classmethod
    def between(cls, min_version: str, max_version: str) -> List[PackFormatRegistryEntry]:
        cls._load()
        min_v = tuple(map(int, min_version.split(".")))
        max_v = tuple(map(int, max_version.split(".")))
        return [
            str(e) for e in cls._entries
            if min_v <= tuple(map(int, e.id.split("."))) <= max_v
        ]

    @classmethod
    def prev(cls, version: str) -> Optional[PackFormatRegistryEntry]:
        cls._load()
        v_tuple = tuple(map(int, version.split(".")))
        prev_entry = None
        for e in cls._entries:
            e_tuple = tuple(map(int, e.id.split(".")))
            if e_tuple < v_tuple:
                prev_entry = e
        return prev_entry

    @classmethod
    def next(cls, version: str) -> Optional[PackFormatRegistryEntry]:
        cls._load()
        v_tuple = tuple(map(int, version.split(".")))
        for e in cls._entries:
            e_tuple = tuple(map(int, e.id.split(".")))
            if e_tuple > v_tuple:
                return e
        return None