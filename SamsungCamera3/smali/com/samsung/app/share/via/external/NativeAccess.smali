.class public Lcom/samsung/app/share/via/external/NativeAccess;
.super Ljava/lang/Object;
.source "NativeAccess.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sharevia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "sharevia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "Qdio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getInputParamerterAnalysis(Ljava/lang/String;III)I
.end method

.method public native startProcessing(Lcom/samsung/app/share/via/external/ShareviaObj;)I
.end method

.method public native stopProcessing()I
.end method
