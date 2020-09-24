.class final Lcom/coloros/settings/utils/ag$4;
.super Ljava/lang/Object;
.source "OppoLockScreenUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Lcom/coloros/settings/feature/password/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/c;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/c;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/coloros/settings/utils/ag$4;->a:Lcom/coloros/settings/feature/password/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 531
    iget-object p2, p0, Lcom/coloros/settings/utils/ag$4;->a:Lcom/coloros/settings/feature/password/c;

    if-eqz p2, :cond_0

    .line 532
    invoke-interface {p2}, Lcom/coloros/settings/feature/password/c;->a()V

    .line 534
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
