.class abstract Lcom/android/settings/accessibility/b;
.super Landroid/database/ContentObserver;
.source "SettingsContentObserver.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/accessibility/b;->a:Ljava/util/List;

    .line 33
    iget-object p1, p0, Lcom/android/settings/accessibility/b;->a:Ljava/util/List;

    const-string v0, "accessibility_enabled"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/android/settings/accessibility/b;->a:Ljava/util/List;

    const-string v0, "enabled_accessibility_services"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/b;-><init>(Landroid/os/Handler;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/accessibility/b;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/settings/accessibility/b;->a:Ljava/util/List;

    .line 45
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    invoke-virtual {p1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
