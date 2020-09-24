.class public final Lcom/android/settings/connecteddevice/usb/f;
.super Lcom/android/settings/connecteddevice/usb/c;
.source "UsbDetailsHeaderController.java"


# instance fields
.field private e:Lcom/android/settings/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/c;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V

    return-void
.end method


# virtual methods
.method protected final a(ZJII)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/f;->e:Lcom/android/settings/widget/b;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/f;->a:Landroid/content/Context;

    const p3, 0x7f1217bf

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1163
    iput-object p2, p1, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 52
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/f;->e:Lcom/android/settings/widget/b;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/f;->a:Landroid/content/Context;

    const p3, 0x7f08086e

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    .line 53
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/f;->e:Lcom/android/settings/widget/b;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/f;->b:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/c;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "usb_device_header"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 44
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/f;->b:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/f;->b:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    const v2, 0x7f0a0260

    .line 45
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/f;->e:Lcom/android/settings/widget/b;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "usb_device_header"

    return-object v0
.end method
