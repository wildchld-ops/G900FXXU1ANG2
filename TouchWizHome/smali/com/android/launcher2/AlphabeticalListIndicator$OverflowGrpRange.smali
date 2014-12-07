.class Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;
.super Ljava/lang/Object;
.source "AlphabeticalListIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AlphabeticalListIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowGrpRange"
.end annotation


# instance fields
.field public mCurrentIndex:I

.field public mEndIndex:I

.field public mStartIndex:I

.field final synthetic this$0:Lcom/android/launcher2/AlphabeticalListIndicator;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;->this$0:Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/AlphabeticalListIndicator;Lcom/android/launcher2/AlphabeticalListIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/AlphabeticalListIndicator$OverflowGrpRange;-><init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V

    return-void
.end method
