.class Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;
.super Ljava/lang/Object;
.source "DefaultKeyType.java"

# interfaces
.implements Lorg/keyczar/interfaces/KeyType$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/DefaultKeyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultKeyBuilder"
.end annotation


# instance fields
.field private final padding:Lorg/keyczar/enums/RsaPadding;

.field final synthetic this$0:Lorg/keyczar/DefaultKeyType;


# direct methods
.method private constructor <init>(Lorg/keyczar/DefaultKeyType;)V
    .locals 1

    iput-object p1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->padding:Lorg/keyczar/enums/RsaPadding;

    return-void
.end method

.method synthetic constructor <init>(Lorg/keyczar/DefaultKeyType;Lorg/keyczar/DefaultKeyType$1;)V
    .locals 0
    .param p1    # Lorg/keyczar/DefaultKeyType;
    .param p2    # Lorg/keyczar/DefaultKeyType$1;

    invoke-direct {p0, p1}, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;-><init>(Lorg/keyczar/DefaultKeyType;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Lorg/keyczar/KeyczarKey;
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v0, Lorg/keyczar/DefaultKeyType$1;->$SwitchMap$org$keyczar$DefaultKeyType:[I

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v1}, Lorg/keyczar/DefaultKeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/keyczar/exceptions/UnsupportedTypeException;

    iget-object v1, p0, Lorg/keyczar/DefaultKeyType$DefaultKeyBuilder;->this$0:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/UnsupportedTypeException;-><init>(Lorg/keyczar/interfaces/KeyType;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lorg/keyczar/AesKey;->read(Ljava/lang/String;)Lorg/keyczar/AesKey;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Lorg/keyczar/HmacKey;->read(Ljava/lang/String;)Lorg/keyczar/HmacKey;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lorg/keyczar/DsaPrivateKey;->read(Ljava/lang/String;)Lorg/keyczar/DsaPrivateKey;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lorg/keyczar/DsaPublicKey;->read(Ljava/lang/String;)Lorg/keyczar/DsaPublicKey;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/keyczar/RsaPrivateKey;->read(Ljava/lang/String;)Lorg/keyczar/RsaPrivateKey;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lorg/keyczar/RsaPublicKey;->read(Ljava/lang/String;)Lorg/keyczar/RsaPublicKey;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
