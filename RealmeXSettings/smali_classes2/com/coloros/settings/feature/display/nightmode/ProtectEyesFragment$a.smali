.class final Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;
.super Landroid/database/ContentObserver;
.source "ProtectEyesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;Landroid/os/Handler;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    .line 341
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->c(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->b(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 356
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->b(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 357
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->d(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e8

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 364
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment$a;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->b(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;->a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesFragment;Ljava/lang/Boolean;)V

    return-void
.end method
