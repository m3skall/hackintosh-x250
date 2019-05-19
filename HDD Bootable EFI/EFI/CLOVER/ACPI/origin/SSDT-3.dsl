/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3.aml, Sun May 19 14:48:36 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000233 (563)
 *     Revision         0x01
 *     Checksum         0x39
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Rmv_Batt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "Rmv_Batt", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.LPC_.EC__.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1.B1ST, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1.SBLI, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1.XB1S, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BATC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.CLPM, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HB1A, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments (from opcode)

    Scope (\_SB.PCI0.LPC.EC.BAT1)
    {
        Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query
        {
            \_SB.PCI0.LPC.EC.CLPM ()
            If (\_SB.PCI0.LPC.EC.HB1A ())
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
            }
            Else
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                If (\_SB.PCI0.LPC.EC.BAT1.XB1S)
                {
                    Notify (\_SB.PCI0.LPC.EC.BATC, 0x03)
                }
            }
        }

        Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
        {
            If (Arg0)
            {
                Store (Zero, \_SB.PCI0.LPC.EC.BAT1.B1ST)
                Store (One, \_SB.PCI0.LPC.EC.BAT1.SBLI)
                Store (Zero, \_SB.PCI0.LPC.EC.BAT1.XB1S)
            }
        }
    }
}

