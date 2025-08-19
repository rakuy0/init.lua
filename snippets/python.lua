local ls = require('luasnip')
local snip = ls.snippet
local fmt = require('luasnip.extras.fmt').fmt

local i = ls.insert_node

return {
    snip(
        { trig = "debug", dscr= "python debugging breakpoint" },
        fmt (
            [[
                breakpoint()
                print('wat')
            ]],
            {}
        )
    ),
    snip(
        { trig = "pause", dscr= "playwright debug pause" },
        { t("await self.page.pause()") }
    ),
    snip(
        { trig = "skeleton", dscr= "python script skeleton" },
        fmt (
            [[
                import sys
                import asyncio
                import argparse

                import synapse.telepath as s_telepath


                def setup():
                    ap = argparse.ArgumentParser('Run a query and dump packed nodes to a json file')
                    ap.add_argument('core', help='Cortex url (or cortex alias)')
                    return ap


                async def main(argv):
                    opts = setup().parse_args(argv)

                if __name__ == '__main__':
                    asyncio.run(main(sys.argv[1:]))

            ]],
            {}
        )
    ),
}
