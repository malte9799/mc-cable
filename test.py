from beet import ProjectConfig, Context, Function, ResourcePack, run_beet
from model_resolver import Render, Item
from pathlib import Path

# path = Path(__file__).parent
# namespace = "cable"
# item = ""

# for_model_resolver = {}

# rp_path = f"{namespace}:item/{item}"
# dst_path = f"{path}/{namespace}/{item}.json"
# for_model_resolver[rp_path] = dst_path

beet_config = ProjectConfig(
     output=None,
     resource_pack={"load": {"assets/cable/models/item": "/Users/malte/Develpoment/Minecraft/Datapacks/mc-cable/src/assets/cable/models/item/goggles.json"}, "name": "render"}, # type: ignore
     meta={"model_resolver": {"dont_merge_datapack": True}}
)
with run_beet(config=beet_config, cache=True) as ctx:
    render = Render(ctx)
    render.add_model_task("cable:item/goggles", path_save="temp/redstone_cable.json")
    render.run()
    # for rp_path, dst_path in for_model_resolver.items():
    #     render.add_model_task(rp_path, path_save=dst_path)
    #     render.run()