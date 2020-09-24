.class final Lcom/coloros/settings/feature/language/ColorLanguageUpdateController$1;
.super Landroid/database/ContentObserver;
.source "ColorLanguageUpdateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;Landroid/os/Handler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController$1;->a:Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController$1;->a:Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;->access$000(Lcom/coloros/settings/feature/language/ColorLanguageUpdateController;)V

    return-void
.end method
