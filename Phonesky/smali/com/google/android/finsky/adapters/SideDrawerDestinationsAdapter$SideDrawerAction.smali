.class public Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;
.super Ljava/lang/Object;
.source "SideDrawerDestinationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SideDrawerAction"
.end annotation


# instance fields
.field private final mActionSelectedRunnable:Ljava/lang/Runnable;

.field private final mActionText:Ljava/lang/String;

.field private final mIsActive:Z

.field final synthetic this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mActionText:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mIsActive:Z

    iput-object p4, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mActionSelectedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mIsActive:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mActionText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mActionSelectedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
