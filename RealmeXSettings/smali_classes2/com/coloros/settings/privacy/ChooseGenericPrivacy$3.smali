.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$3;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;

.field final synthetic b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$3;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 377
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;

    if-eqz p1, :cond_0

    .line 379
    invoke-interface {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;->a()V

    :cond_0
    return-void
.end method
