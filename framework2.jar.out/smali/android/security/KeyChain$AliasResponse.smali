.class Landroid/security/KeyChain$AliasResponse;
.super Landroid/security/IKeyChainAliasCallback$Stub;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AliasResponse"
.end annotation


# instance fields
.field private final keyChainAliasResponse:Landroid/security/KeyChainAliasCallback;


# direct methods
.method private constructor <init>(Landroid/security/KeyChainAliasCallback;)V
    .locals 0
    .param p1    # Landroid/security/KeyChainAliasCallback;

    invoke-direct {p0}, Landroid/security/IKeyChainAliasCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/security/KeyChain$AliasResponse;->keyChainAliasResponse:Landroid/security/KeyChainAliasCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$1;)V
    .locals 0
    .param p1    # Landroid/security/KeyChainAliasCallback;
    .param p2    # Landroid/security/KeyChain$1;

    invoke-direct {p0, p1}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;)V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "comSecTima#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    # setter for: Landroid/security/KeyChain;->useTimaKeyStore:Z
    invoke-static {v0}, Landroid/security/KeyChain;->access$102(Z)Z

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Landroid/security/KeyChain$AliasResponse;->keyChainAliasResponse:Landroid/security/KeyChainAliasCallback;

    invoke-interface {v0, p1}, Landroid/security/KeyChainAliasCallback;->alias(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    # setter for: Landroid/security/KeyChain;->useTimaKeyStore:Z
    invoke-static {v0}, Landroid/security/KeyChain;->access$102(Z)Z

    goto :goto_0
.end method
