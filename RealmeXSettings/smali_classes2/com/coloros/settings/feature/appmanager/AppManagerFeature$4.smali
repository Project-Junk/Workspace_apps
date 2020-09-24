.class final Lcom/coloros/settings/feature/appmanager/AppManagerFeature$4;
.super Ljava/lang/Object;
.source "AppManagerFeature.java"

# interfaces
.implements Lcolor/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->showSearchFragment(Lcolor/support/v7/widget/SearchView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$4;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$4;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$702(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$4;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$700(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$800(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
