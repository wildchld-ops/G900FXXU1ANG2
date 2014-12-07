.class Lcom/android/mms/util/SmileyParser$Smileys;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Smileys"
.end annotation


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static HEART:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MAD:I

.field public static MONEY_MOUTH:I

.field public static POKERFACE:I

.field public static SAD:I

.field public static SMIRK:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/util/SmileyParser$Smileys;->sIconIds:[I

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->HAPPY:I

    const/4 v0, 0x1

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->SAD:I

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->WINKING:I

    const/4 v0, 0x3

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->TONGUE_STICKING_OUT:I

    const/4 v0, 0x4

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->SURPRISED:I

    const/4 v0, 0x5

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->KISSING:I

    const/4 v0, 0x6

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->YELLING:I

    const/4 v0, 0x7

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->COOL:I

    const/16 v0, 0x8

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->MONEY_MOUTH:I

    const/16 v0, 0x9

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->FOOT_IN_MOUTH:I

    const/16 v0, 0xa

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->EMBARRASSED:I

    const/16 v0, 0xb

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->ANGEL:I

    const/16 v0, 0xc

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->UNDECIDED:I

    const/16 v0, 0xd

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->CRYING:I

    const/16 v0, 0xe

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->LIPS_ARE_SEALED:I

    const/16 v0, 0xf

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->LAUGHING:I

    const/16 v0, 0x10

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->WTF:I

    const/16 v0, 0x11

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->MAD:I

    const/16 v0, 0x12

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->HEART:I

    const/16 v0, 0x13

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->SMIRK:I

    const/16 v0, 0x14

    sput v0, Lcom/android/mms/util/SmileyParser$Smileys;->POKERFACE:I

    return-void

    :array_0
    .array-data 4
        0x7f020062
        0x7f02006a
        0x7f02006f
        0x7f02006d
        0x7f02006c
        0x7f020064
        0x7f020071
        0x7f02005e
        0x7f020068
        0x7f020061
        0x7f020060
        0x7f02005d
        0x7f02006e
        0x7f02005f
        0x7f020066
        0x7f020065
        0x7f020070
        0x7f020063
        0x7f020067
        0x7f02006b
        0x7f020069
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1

    sget-object v0, Lcom/android/mms/util/SmileyParser$Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
