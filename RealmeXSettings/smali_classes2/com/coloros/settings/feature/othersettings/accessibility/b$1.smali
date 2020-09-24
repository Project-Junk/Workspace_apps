.class final Lcom/coloros/settings/feature/othersettings/accessibility/b$1;
.super Ljava/lang/Object;
.source "AccessibilityListParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/accessibility/b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/b;Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/b$1;->b:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/b$1;->b:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/b$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a(Lcom/coloros/settings/feature/othersettings/accessibility/b;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
