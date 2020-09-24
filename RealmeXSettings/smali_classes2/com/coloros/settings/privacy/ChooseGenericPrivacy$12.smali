.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$12;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Lcom/coloros/settings/privacy/ChooseGenericPrivacy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;
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

    .line 249
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$12;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.CHECK_APP_PRIVACY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$12;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
