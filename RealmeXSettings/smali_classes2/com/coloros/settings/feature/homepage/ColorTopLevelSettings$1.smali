.class final Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$1;
.super Ljava/lang/Object;
.source "ColorTopLevelSettings.java"

# interfaces
.implements Lcom/coloros/settings/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$1;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final scrolledToTop()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$1;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$1;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-static {v1}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->a(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$1;->a:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-static {v1}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->b(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)Z

    .line 158
    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->a()Lcom/coloros/settings/feature/homepage/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/homepage/a;->b(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V

    :cond_0
    return-void
.end method
