.class final Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;
.super Ljava/lang/Object;
.source "PictureInPictureSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/pm/ApplicationInfo;

.field final synthetic c:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;->c:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;->b:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 172
    const-class v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;->b:Landroid/content/pm/ApplicationInfo;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;->c:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    .line 174
    invoke-virtual {v4}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->getMetricsCategory()I

    move-result v6

    const v1, 0x7f12102b

    const/4 v5, -0x1

    .line 172
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->a(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p1, 0x1

    return p1
.end method
