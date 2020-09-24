.class public final synthetic Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

.field private final synthetic f$1:Lcom/color/support/widget/ColorEditText;

.field private final synthetic f$2:Lcom/coloros/settings/feature/multiuser/a;

.field private final synthetic f$3:Lcom/android/settings/users/UserSettings;

.field private final synthetic f$4:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$1:Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$2:Lcom/coloros/settings/feature/multiuser/a;

    iput-object p4, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$3:Lcom/android/settings/users/UserSettings;

    iput-object p5, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$4:Lcolor/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$0:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$1:Lcom/color/support/widget/ColorEditText;

    iget-object v2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$2:Lcom/coloros/settings/feature/multiuser/a;

    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$3:Lcom/android/settings/users/UserSettings;

    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;->f$4:Lcolor/support/v7/app/AlertDialog;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->lambda$null$4$MultiUserFeature(Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
