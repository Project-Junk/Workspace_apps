.class final Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$4;
.super Ljava/lang/Object;
.source "ChooseAbstractPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 234
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$4;->a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$4;->a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(ILjava/lang/String;)V

    return-void
.end method
