.class public interface abstract Lcom/google/android/finsky/utils/PlayCardImageTypeSequence;
.super Ljava/lang/Object;
.source "PlayCardImageTypeSequence.java"


# static fields
.field public static final CORE_IMAGE_TYPES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/utils/PlayCardImageTypeSequence;->CORE_IMAGE_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data
.end method


# virtual methods
.method public abstract getImageTypePreference()[I
.end method
