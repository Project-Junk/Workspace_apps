.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$2;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(IIILcom/coloros/settings/privacy/ChooseGenericPrivacy$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$2;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 369
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$2;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method
