.class public final Lcom/coloros/settings/ringtone/g$5;
.super Ljava/lang/Object;
.source "RuntimePermissionAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coloros/settings/ringtone/g;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/coloros/settings/ringtone/g$5;->b:Lcom/coloros/settings/ringtone/g;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/g$5;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 198
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 199
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.PACKAGE_NAME"

    const-string v0, "com.android.settings"

    .line 200
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object p2, p0, Lcom/coloros/settings/ringtone/g$5;->a:Landroid/app/Activity;

    const/16 v0, 0x3ea

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
