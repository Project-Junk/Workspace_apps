.class final Lcom/android/settings/network/ApnSettings$b;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$b;->a:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/ApnSettings;B)V
    .locals 0

    .line 675
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings$b;-><init>(Lcom/android/settings/network/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 678
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$b;->a:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    .line 682
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->e()Z

    return-void

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$b;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->a(Lcom/android/settings/network/ApnSettings;)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$b;->a:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 687
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->e()Z

    .line 688
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$b;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->c(Lcom/android/settings/network/ApnSettings;)V

    .line 689
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$b;->a:Lcom/android/settings/network/ApnSettings;

    .line 691
    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f121253

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
