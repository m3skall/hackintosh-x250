/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-14.aml, Sun May 19 14:48:36 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001A1 (417)
 *     Revision         0x02
 *     Checksum         0x7A
 *     OEM ID           "X240"
 *     OEM Table ID     "_KBD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "X240", "_KBD", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.LPC_.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.KBD_, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0406)
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0405)
        }

        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x033E)
        }

        Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x046E)
        }

        Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0342)
        }

        Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0367)
        }

        Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0368)
        }

        Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0369)
        }

        Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x036A)
        }
    }

    Scope (_SB.PCI0.LPC.KBD)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "LENOVO", 
                "RM,oem-table-id", 
                "T460"
            })
        }

        Name (RMCF, Package (0x04)
        {
            "Synaptics TouchPad", 
            Package (0x02)
            {
                "DynamicEWMode", 
                ">n"
            }, 

            "Keyboard", 
            Package (0x02)
            {
                "Custom PS2 Map", 
                Package (0x02)
                {
                    Package (0x00){}, 
                    "e037=64"
                }
            }
        })
    }
}

