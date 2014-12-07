.class public final enum Lcom/google/android/finsky/config/ContentLevel;
.super Ljava/lang/Enum;
.source "ContentLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/ContentLevel$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/config/ContentLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/config/ContentLevel;

.field private static final DEFAULT_VALUE:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

.field public static final enum SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "EVERYONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "LOW_MATURITY"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "MEDIUM_MATURITY"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "HIGH_MATURITY"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    new-instance v0, Lcom/google/android/finsky/config/ContentLevel;

    const-string v1, "SHOW_ALL"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/config/ContentLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/config/ContentLevel;

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->$VALUES:[Lcom/google/android/finsky/config/ContentLevel;

    sget-object v0, Lcom/google/android/finsky/config/G;->vendingContentRating:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/config/ContentLevel;->convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/config/ContentLevel;->DEFAULT_VALUE:Lcom/google/android/finsky/config/ContentLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    return-void
.end method

.method public static convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;
    .locals 5

    const/4 v4, -0x1

    if-ne p0, v4, :cond_1

    sget-object v3, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/config/ContentLevel;->values()[Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget v4, v3, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_0
.end method

.method public static importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;
    .locals 9

    const/4 v8, -0x1

    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/FinskyPreferences;->getPreferencesFile()Lcom/google/android/finsky/config/PreferenceFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/google/android/finsky/config/ContentLevel;->migrateOldLevels(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v4

    if-eq v4, v8, :cond_0

    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v5, v4

    :cond_0
    if-ltz v5, :cond_2

    invoke-static {}, Lcom/google/android/finsky/config/ContentLevel;->values()[Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget v7, v3, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    if-ne v7, v5, :cond_1

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/android/finsky/config/ContentLevel;->DEFAULT_VALUE:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_1
.end method

.method private static migrateOldLevels(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .locals 16

    const/4 v11, 0x0

    sget-object v14, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/ContentLevel;->getDfeValue()I

    move-result v12

    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v14, v10

    add-int/lit8 v2, v14, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v14, v10, v2

    iget-object v1, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v14, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-ltz v13, :cond_0

    const/4 v11, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_2

    :goto_1
    return v12

    :cond_2
    new-instance v6, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v14, "vending_preferences"

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    const-string v14, "content_rating"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/google/android/finsky/config/ContentLevel;->values()[Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v3

    array-length v8, v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_4

    aget-object v9, v3, v4

    iget v14, v9, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    if-ne v14, v7, :cond_3

    iget v12, v9, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, -0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/config/ContentLevel;
    .locals 1

    const-class v0, Lcom/google/android/finsky/config/ContentLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/config/ContentLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/config/ContentLevel;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/config/ContentLevel;->$VALUES:[Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v0}, [Lcom/google/android/finsky/config/ContentLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/config/ContentLevel;

    return-object v0
.end method


# virtual methods
.method public encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel$1;->$SwitchMap$com$google$android$finsky$config$ContentLevel:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/config/ContentLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "enum %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    sget-object v1, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    if-eq p1, p0, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDfeValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/config/ContentLevel;->mValue:I

    return v0
.end method
