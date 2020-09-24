.class final Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;
.super Ljava/lang/Object;
.source "ColorUserPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/multiuser/ColorUserPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/multiuser/ColorUserPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;->a:Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string v0, "ColorUserPreference"

    const-string v1, "Listener onCheckedChanged"

    .line 423
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;->a:Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;->a:Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1414
    iget-object v2, v0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->c:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$e;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->c:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$e;

    invoke-interface {v2, v0, v1}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$e;->onUserSwitch(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    xor-int/2addr p2, v3

    .line 431
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 434
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;->a:Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->a(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;Z)V

    return-void
.end method
