.class final Lcom/android/settings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/settings/MasterClear$1;->a:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 247
    invoke-static {p1}, Lcom/android/settings/m;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-static {p1}, Lcom/android/settings/m;->l(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 251
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.FACTORY_RESET"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MasterClear$1;->a:Lcom/android/settings/MasterClear;

    invoke-static {p1}, Lcom/android/settings/MasterClear;->a(Lcom/android/settings/MasterClear;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 262
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MasterClear$1;->a:Lcom/android/settings/MasterClear;

    invoke-virtual {p1}, Lcom/android/settings/MasterClear;->b()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->a:Lcom/android/settings/MasterClear;

    const/16 v1, 0x38

    .line 1196
    invoke-virtual {v0, p1, v1}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 266
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MasterClear$1;->a:Lcom/android/settings/MasterClear;

    invoke-virtual {p1}, Lcom/android/settings/MasterClear;->a()V

    return-void
.end method
