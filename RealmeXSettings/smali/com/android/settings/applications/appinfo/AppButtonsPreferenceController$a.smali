.class final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/pm/PackageManager;

.field final b:Ljava/lang/String;

.field final c:I

.field final synthetic d:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;->d:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;->a:Landroid/content/pm/PackageManager;

    .line 832
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;->b:Ljava/lang/String;

    .line 833
    iput p4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 838
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;->a:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void
.end method
