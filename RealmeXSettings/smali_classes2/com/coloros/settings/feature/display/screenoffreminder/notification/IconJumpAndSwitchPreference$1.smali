.class final Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference$1;
.super Ljava/lang/Object;
.source "IconJumpAndSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference$1;->a:Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference$1;->a:Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)Lcom/color/support/widget/ColorSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference$1;->a:Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)Lcom/color/support/widget/ColorSwitch;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference$1;->a:Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->b(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)V

    return-void
.end method
