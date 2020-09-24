.class public final Lcom/coloros/settings/ringtone/g$3;
.super Ljava/lang/Object;
.source "RuntimePermissionAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 210
    iput-object p1, p0, Lcom/coloros/settings/ringtone/g$3;->b:Lcom/coloros/settings/ringtone/g;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/g$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/coloros/settings/ringtone/g$3;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
