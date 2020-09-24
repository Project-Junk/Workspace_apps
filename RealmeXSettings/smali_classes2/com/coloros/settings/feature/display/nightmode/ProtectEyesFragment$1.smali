.class final Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$1;
.super Landroid/os/Handler;
.source "ProtectEyesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$1;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 106
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$1;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)V

    :goto_0
    return-void
.end method
