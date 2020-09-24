.class public final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;
.super Lcom/color/darkmode/utils/IAppOrderInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThirdApp"
.end annotation


# instance fields
.field private packageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1

    const-string v0, "packageInfo"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderInfo2"

    invoke-static {p4, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/color/darkmode/utils/IAppOrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public final setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method
