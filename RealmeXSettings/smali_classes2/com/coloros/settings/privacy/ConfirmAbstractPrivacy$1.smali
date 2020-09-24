.class final Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$1;
.super Ljava/lang/Object;
.source "ConfirmAbstractPrivacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$1;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$1;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;Ljava/lang/String;)V

    return-void
.end method
