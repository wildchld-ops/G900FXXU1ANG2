.class Lcom/android/mms/ui/RecipientFilterItem$PhotoQuery;
.super Ljava/lang/Object;
.source "RecipientFilterItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientFilterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoQuery"
.end annotation


# static fields
.field public static final PHOTO:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientFilterItem$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
