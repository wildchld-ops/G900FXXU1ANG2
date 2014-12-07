.class public Lcom/android/mms/ui/FontSizeController;
.super Ljava/lang/Object;
.source "FontSizeController.java"


# static fields
.field public static final BUBBLE_DATE_FONT_SIZE:[F

.field public static final BUBBLE_FONT_SIZE:[F

.field public static final BUBBLE_FONT_SIZE_7_STEP:[F

.field public static final BUBBLE_FONT_SIZE_WVGA:[F

.field public static final DIALOG_FONT_SIZE:[I

.field public static final DIALOG_FONT_SIZE_7_STEP:[I

.field public static final FONT_SIZE_7_STEP_BUBBLE_NORMAL:F = 19.0f

.field public static final FONT_SIZE_7_STEP_DEFAULT_VALUE:Ljava/lang/String; = "Small"

.field public static final FONT_SIZE_7_STEP_EDIT_NORMAL:F = 19.0f

.field public static final FONT_SIZE_7_STEP_EXCEPTION_HUGE:F = 51.0f

.field public static final FONT_SIZE_7_STEP_EXTRA_LARGE_VALUE:Ljava/lang/String; = "Extra large"

.field public static final FONT_SIZE_7_STEP_EXTRA_SMALL_VALUE:Ljava/lang/String; = "Extra small"

.field public static final FONT_SIZE_7_STEP_HUGE_VALUE:Ljava/lang/String; = "Huge"

.field public static final FONT_SIZE_7_STEP_LARGE_VALUE:Ljava/lang/String; = "Large"

.field public static final FONT_SIZE_7_STEP_MEDIUM_VALUE:Ljava/lang/String; = "Medium"

.field public static final FONT_SIZE_7_STEP_RECIPIENTS_NORMAL:F = 19.0f

.field public static final FONT_SIZE_7_STEP_SMALL_VALUE:Ljava/lang/String; = "Small"

.field public static final FONT_SIZE_7_STEP_TINY_VALUE:Ljava/lang/String; = "Tiny"

.field public static final FONT_SIZE_7_STEP_VEIWER_NORMAL:F = 19.0f

.field public static final FONT_SIZE_BUBBLE:I = 0x2

.field public static final FONT_SIZE_BUBBLE_NORMAL:F = 19.0f

.field public static final FONT_SIZE_DEFAULT_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_EDIT:I = 0x3

.field public static final FONT_SIZE_EDIT_NORMAL:F = 19.0f

.field public static final FONT_SIZE_EXCEPTION_HUGE:F = 58.0f

.field public static final FONT_SIZE_HUGE_VALUE:Ljava/lang/String; = "Huge"

.field public static final FONT_SIZE_LARGE_VALUE:Ljava/lang/String; = "Large"

.field public static final FONT_SIZE_NORMAL_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_RATE:[F

.field public static final FONT_SIZE_RATE_7_STEP:[F

.field public static final FONT_SIZE_RECIPIENTS:I = 0x1

.field public static final FONT_SIZE_RECIPIENTS_NORMAL:F = 18.0f

.field public static final FONT_SIZE_RESTRICTED:I = 0x5

.field public static final FONT_SIZE_SMALL_VALUE:Ljava/lang/String; = "Small"

.field public static final FONT_SIZE_TINY_VALUE:Ljava/lang/String; = "Tiny"

.field public static final FONT_SIZE_VEIWER:I = 0x4

.field public static final FONT_SIZE_VEIWER_NORMAL:F = 19.0f

.field public static final KOR_FONT_SIZE_BUBBLE_NORMAL:F = 21.0f

.field public static final KOR_FONT_SIZE_EDIT_NORMAL:F = 21.0f

.field public static final KOR_FONT_SIZE_RECIPIENTS_NORMAL:F = 20.0f

.field public static final KOR_FONT_SIZE_VEIWER_NORMAL:F = 21.0f

.field public static final KOR_FULLHD_FONT_SIZE_RATE:[F

.field public static final KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

.field public static final KOR_RECIPIENTS_FONT_SIZE_RATE:[F

.field public static final T0_FONT_SIZE_BUBBLE_NORMAL:F = 22.0f

.field public static final T0_FONT_SIZE_EDIT_NORMAL:F = 22.0f

.field public static final T0_FONT_SIZE_EXCEPTION_HUGE:F = 52.0f

.field public static final T0_FONT_SIZE_RATE:[F

.field public static final T0_FONT_SIZE_RECIPIENTS_NORMAL:F = 22.0f

.field public static final T0_FONT_SIZE_VEIWER_NORMAL:F = 17.0f

.field public static mFontSizeBubbleNormal:F

.field public static mFontSizeEditNormal:F

.field public static mFontSizeExceptionHuge:F

.field public static mFontSizeRecipientsNormal:F

.field public static mFontSizeViewerNormal:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v0, 0x0

    const/4 v4, 0x6

    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeRecipientsNormal:F

    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeBubbleNormal:F

    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeEditNormal:F

    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeViewerNormal:F

    sput v0, Lcom/android/mms/ui/FontSizeController;->mFontSizeExceptionHuge:F

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_WVGA:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_RECIPIENTS_FONT_SIZE_RATE:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_FONT_SIZE_RATE:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->T0_FONT_SIZE_RATE:[F

    new-array v0, v4, [I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->DIALOG_FONT_SIZE:[I

    new-array v0, v4, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_DATE_FONT_SIZE:[F

    new-array v0, v5, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE_7_STEP:[F

    new-array v0, v5, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    new-array v0, v5, [I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const/4 v1, 0x7

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->DIALOG_FONT_SIZE_7_STEP:[I

    return-void

    :array_0
    .array-data 4
        0x41b00000
        0x41980000
        0x41a00000
        0x41b00000
        0x41e80000
        0x42640000
    .end array-data

    :array_1
    .array-data 4
        0x41900000
        0x41600000
        0x41800000
        0x41900000
        0x41c00000
        0x41f80000
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x3f428f5c
        0x3f666666
        0x3f800000
        0x3fb0a3d7
        0x3fb0a3d7
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x3f428f5c
        0x3f666666
        0x3f800000
        0x3f9c28f6
        0x3faa3d71
    .end array-data

    :array_4
    .array-data 4
        0x3f800000
        0x3f3851ec
        0x3f51eb85
        0x3f800000
        0x3fab851f
        0x3fb0a3d7
    .end array-data

    :array_5
    .array-data 4
        0x3f800000
        0x3f4ccccd
        0x3f666666
        0x3f800000
        0x3f8ccccd
        0x3f99999a
    .end array-data

    :array_6
    .array-data 4
        0x3f800000
        0x3f59999a
        0x3f6e147b
        0x3f800000
        0x3fa66666
        0x3fe66666
    .end array-data

    :array_7
    .array-data 4
        0x41800000
        0x41400000
        0x415547ae
        0x41800000
        0x41800000
        0x41800000
    .end array-data

    :array_8
    .array-data 4
        0x3f800000
        0x3f4a3d71
        0x3f63d70a
        0x3f800000
        0x3f8ccccd
        0x3f9ae148
        0x3faf5c29
        0x3fdd70a4
    .end array-data

    :array_9
    .array-data 4
        0x41980000
        0x41700000
        0x41880000
        0x41980000
        0x41a80000
        0x41b80000
        0x41d00000
        0x424c0000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateBubbleFontRateArray(Landroid/content/Context;)[F
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_WVGA:[F

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE:[F

    goto :goto_0
.end method

.method public static updateFontRateArray(I)[F
    .locals 3

    const/4 v2, 0x5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE_7_STEP:[F

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->T0_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p0, v2, :cond_2

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p0, v2, :cond_4

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_RECIPIENTS_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE:[F

    goto :goto_0
.end method

.method public static updateFontSizeExceptionHuge()F
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x424c0000

    :goto_0
    const/high16 v0, 0x424c0000

    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x42500000

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v0, 0x42680000

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42680000

    goto :goto_0
.end method

.method public static updateFontSizeNormal(I)F
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x41980000

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v0, 0x41a00000

    goto :goto_0

    :cond_2
    const/high16 v0, 0x41900000

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v0, 0x41980000

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v0, 0x41a80000

    goto :goto_0

    :cond_5
    const/high16 v0, 0x41980000

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v0, 0x41980000

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_8

    const/high16 v0, 0x41a80000

    goto :goto_0

    :cond_8
    const/high16 v0, 0x41980000

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v0, 0x41980000

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v0, 0x41a00000

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v1

    if-eqz v1, :cond_c

    const/high16 v0, 0x41900000

    goto :goto_0

    :cond_c
    const/high16 v0, 0x41980000

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_d

    const/high16 v0, 0x41980000

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_e

    const/high16 v0, 0x41880000

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v0, 0x41a80000

    goto/16 :goto_0

    :cond_f
    const/high16 v0, 0x41980000

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
