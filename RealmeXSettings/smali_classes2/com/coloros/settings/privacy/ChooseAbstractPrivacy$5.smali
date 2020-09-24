.class final Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$5;
.super Ljava/lang/Object;
.source "ChooseAbstractPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$5;->a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$5;->a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(ILjava/lang/String;)V

    return-void
.end method
