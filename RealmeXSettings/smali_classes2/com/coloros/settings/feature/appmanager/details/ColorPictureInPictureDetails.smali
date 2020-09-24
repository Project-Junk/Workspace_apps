.class public Lcom/coloros/settings/feature/appmanager/details/ColorPictureInPictureDetails;
.super Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;
.source "ColorPictureInPictureDetails.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    const v0, 0x7f150057

    .line 32
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/appmanager/details/ColorPictureInPictureDetails;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/ColorPictureInPictureDetails;->q:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f121029

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setSummary(I)V

    return-void
.end method
