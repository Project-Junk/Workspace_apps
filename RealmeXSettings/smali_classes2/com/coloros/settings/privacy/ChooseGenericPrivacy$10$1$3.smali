.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$3;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$3;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$3;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->d:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    const v1, 0x7f120e06

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 900
    invoke-static {}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a()V

    .line 901
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1$3;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10$1;->a:Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$10;->d:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method
