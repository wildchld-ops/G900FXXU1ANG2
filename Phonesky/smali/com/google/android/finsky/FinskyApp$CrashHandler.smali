.class Lcom/google/android/finsky/FinskyApp$CrashHandler;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/FinskyApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashHandler"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/FinskyApp;Ljava/io/File;)V
    .locals 1
    .param p2    # Ljava/io/File;

    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Thread;
    .param p2    # Ljava/lang/Throwable;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
