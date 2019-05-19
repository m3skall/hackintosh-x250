/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1.aml, Sun May 19 14:48:36 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000595 (1429)
 *     Revision         0x01
 *     Checksum         0x75
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-SSDT2"
 *     OEM Revision     0x00000200 (512)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "TP-SSDT2", 0x00000200)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.IGPU.AINT, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.IGPU.LCD0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.PFMB, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BFRQ, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BRCD, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BRNS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BRTW, PkgObj)    // (from opcode)
    External (_SB_.PCI0.PEG_.VID_.ISOP, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG_.VID_.LCD0, DeviceObj)    // (from opcode)
    External (BRLV, IntObj)    // (from opcode)
    External (NBCF, IntObj)    // (from opcode)
    External (UCMS, MethodObj)    // 1 Arguments (from opcode)
    External (VBRC, MethodObj)    // 1 Arguments (from opcode)
    External (WIN7, UnknownObj)    // (from opcode)
    External (WIN8, IntObj)    // (from opcode)
    External (WVIS, IntObj)    // (from opcode)

    Scope (\)
    {
        Method (KOU2, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }

    Scope (\_SB.PCI0.IGPU.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            If (\WVIS)
            {
                Store (One, \NBCF)
            }

            Store (\_SB.PCI0.LPC.EC.BFRQ, Local0)
            If (LNotEqual (\_SB.PCI0.IGPU.PFMB, Local0))
            {
                \_SB.PCI0.IGPU.AINT (0x03, Local0)
            }

            If (\WIN8)
            {
                Return (Package (0x67)
                {
                    0x64, 
                    0x64, 
                    Zero, 
                    One, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            If (\WIN8)
            {
                \_SB.PCI0.IGPU.AINT (One, \_SB.PCI0.LPC.EC.BRCD (Arg0))
            }
            Else
            {
                Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, Zero, 0x02), Local0)
                If (LNotEqual (Local0, Ones))
                {
                    Subtract (Local0, 0x02, Local1)
                    Store (Local1, \BRLV)
                    \_SB.PCI0.LPC.EC.BRNS (\UCMS (0x16))
                }
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            Store (\BRLV, Local0)
            Add (Local0, 0x02, Local1)
            If (LLessEqual (Local1, 0x11))
            {
                Return (DerefOf (Index (\_SB.PCI0.LPC.EC.BRTW, Local1)))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.PEG.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            If (\WVIS)
            {
                Store (One, \NBCF)
            }

            If (\WIN8)
            {
                Return (Package (0x67)
                {
                    0x64, 
                    0x64, 
                    Zero, 
                    One, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            If (LAnd (LNotEqual (\WIN7, Zero), \_SB.PCI0.PEG.VID.ISOP))
            {
                \_SB.PCI0.IGPU.LCD0._BCM (Arg0)
            }
            ElseIf (\NBCF)
            {
                Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, Zero, 0x02), Local0)
                If (LNotEqual (Local0, Ones))
                {
                    Subtract (Local0, 0x02, Local1)
                    \VBRC (Local1)
                    Store (Local1, \BRLV)
                }
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            If (LAnd (LNotEqual (\WIN7, Zero), \_SB.PCI0.PEG.VID.ISOP))
            {
                Return (\_SB.PCI0.IGPU.LCD0._BQC ())
            }
            Else
            {
                Store (\BRLV, Local0)
                Add (Local0, 0x02, Local1)
                If (LLessEqual (Local1, 0x11))
                {
                    Return (DerefOf (Index (\_SB.PCI0.LPC.EC.BRTW, Local1)))
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

