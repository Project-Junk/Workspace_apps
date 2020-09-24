.class final Lcom/coloros/settings/feature/appmanager/AppInfoFeature$1;
.super Ljava/lang/Object;
.source "AppInfoFeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->showAppEncryptedHintDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppInfoFeature;Landroid/content/Context;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature$1;->b:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 534
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oppo.safe.action.APP_PROTECT_LIST_ACTIVITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature$1;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
