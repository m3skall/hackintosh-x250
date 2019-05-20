/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-15.aml, Sun May 19 14:48:36 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000126 (294)
 *     Revision         0x01
 *     Checksum         0xE2
 *     OEM ID           "Sniki"
 *     OEM Table ID     "_ALC3232"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "Sniki", "_ALC3232", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)

    Name (_SB.PCI0.HDEF.RMCF, Package (0x02)
    {
        "CodecCommander", 
        Package (0x08)
        {
            "Custom Commands", 
            Package (0x03)
            {
                Package (0x00){}, 
                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0x57, 0x08, 0x83                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }, 

                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0xA7, 0x07, 0x24                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }
            }, 

            "Perform Reset", 
            ">y", 
            "Send Delay", 
            0x0A, 
            "Sleep Nodes", 
            ">n"
        }
    })
}

