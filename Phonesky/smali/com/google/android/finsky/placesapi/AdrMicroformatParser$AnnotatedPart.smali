.class Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;
.super Ljava/lang/Object;
.source "AdrMicroformatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/placesapi/AdrMicroformatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnnotatedPart"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field type:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;->type:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;->text:Ljava/lang/String;

    return-object v0
.end method
