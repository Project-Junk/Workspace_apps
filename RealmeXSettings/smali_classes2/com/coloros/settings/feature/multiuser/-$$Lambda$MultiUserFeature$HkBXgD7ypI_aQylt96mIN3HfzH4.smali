.class public final synthetic Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

.field private final synthetic f$1:Lcolor/support/v7/app/AlertDialog;

.field private final synthetic f$2:Lcom/color/support/widget/ColorEditText;

.field private final synthetic f$3:Lcom/coloros/settings/feature/multiuser/a;

.field private final synthetic f$4:Lcom/android/settings/users/UserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcolor/support/v7/app/AlertDialog;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$1:Lcolor/support/v7/app/AlertDialog;

    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$2:Lcom/color/support/widget/ColorEditText;

    iput-object p4, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$3:Lcom/coloros/settings/feature/multiuser/a;

    iput-object p5, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$4:Lcom/android/settings/users/UserSettings;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$1:Lcolor/support/v7/app/AlertDialog;

    iget-object v2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$2:Lcom/color/support/widget/ColorEditText;

    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$3:Lcom/coloros/settings/feature/multiuser/a;

    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;->f$4:Lcom/android/settings/users/UserSettings;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->lambda$showAddUserDialog$5$MultiUserFeature(Lcolor/support/v7/app/AlertDialog;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;Landroid/content/DialogInterface;)V

    return-void
.end method
