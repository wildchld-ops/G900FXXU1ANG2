.class final enum Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;
.super Ljava/lang/Enum;
.source "AddressFieldsLayoutHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field public static final enum SHOWING_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field public static final enum SHOWING_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field public static final enum SHOWING_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field public static final enum TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field public static final enum TRANSITION_TO_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field public static final enum TRANSITION_TO_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field public static final enum TRANSITION_TO_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const-string v1, "SHOWING_PROGRESS_BAR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const-string v1, "SHOWING_ALL_FIELDS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const-string v1, "SHOWING_ONE_FIELD"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const-string v1, "TRANSITION_TO_PROGRESS_BAR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const-string v1, "TRANSITION_TO_ALL_FIELDS"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const-string v1, "TRANSITION_TO_ONE_FIELD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const-string v1, "TRANSITION_ONE_FIELD_ALL_FIELDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->$VALUES:[Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->$VALUES:[Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    return-object v0
.end method
