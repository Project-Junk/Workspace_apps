.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorPictureInPictureDetailPreferenceController;
.super Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;
.source "ColorPictureInPictureDetailPreferenceController.java"


# static fields
.field private static final KEY_PICTURE_IN_PICTURE:Ljava/lang/String; = "picture_in_picture"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "picture_in_picture"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorPictureInPictureDetailPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 37
    const-class v0, Lcom/coloros/settings/feature/appmanager/details/ColorPictureInPictureDetails;

    return-object v0
.end method
