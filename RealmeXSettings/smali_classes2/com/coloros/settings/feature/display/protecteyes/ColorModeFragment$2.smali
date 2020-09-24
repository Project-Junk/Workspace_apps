.class final Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;
.super Ljava/lang/Object;
.source "ColorModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Landroid/content/ContentResolver;

.field final synthetic d:I

.field final synthetic e:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;ZZLandroid/content/ContentResolver;I)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->e:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->a:Z

    iput-boolean p3, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->b:Z

    iput-object p4, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->c:Landroid/content/ContentResolver;

    iput p5, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 204
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->a:Z

    const p2, 0x3e2e147b    # 0.17f

    const-string v0, "color_display_level"

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->b:Z

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->c:Landroid/content/ContentResolver;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;Z)V

    .line 206
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->c:Landroid/content/ContentResolver;

    invoke-static {p1, v0, p2, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_0

    .line 208
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->a:Z

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->c:Landroid/content/ContentResolver;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 210
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->b:Z

    if-eqz p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->c:Landroid/content/ContentResolver;

    invoke-static {p1, v0, p2, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 214
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->c:Landroid/content/ContentResolver;

    iget p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->d:I

    const-string v0, "oppo_color_mode"

    invoke-static {p1, v0, p2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 215
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->e:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    iget p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$2;->d:I

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(I)V

    return-void
.end method
