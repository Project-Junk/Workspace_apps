.class public Lcom/android/settings/development/ColorModePreference;
.super Landroidx/preference/SwitchPreference;
.source "ColorModePreference.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/ColorModePreference$a;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/display/DisplayManager;

.field private b:Landroid/view/Display;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settings/development/ColorModePreference;->a:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$a;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030054

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x7f030055

    .line 47
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030053

    .line 48
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    .line 50
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 51
    aget v5, v1, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 52
    new-instance v5, Lcom/android/settings/development/ColorModePreference$a;

    invoke-direct {v5, v3}, Lcom/android/settings/development/ColorModePreference$a;-><init>(B)V

    .line 53
    aget v6, v1, v4

    .line 1127
    iput v6, v5, Lcom/android/settings/development/ColorModePreference$a;->a:I

    .line 54
    aget-object v6, v2, v4

    .line 2127
    iput-object v6, v5, Lcom/android/settings/development/ColorModePreference$a;->b:Ljava/lang/String;

    .line 55
    aget-object v6, p0, v4

    .line 3127
    iput-object v6, v5, Lcom/android/settings/development/ColorModePreference$a;->c:Ljava/lang/String;

    .line 56
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->a:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->b:Landroid/view/Display;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->d:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->b:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getColorMode()I

    move-result v0

    const/4 v2, -0x1

    .line 104
    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->c:I

    move v2, v1

    .line 105
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/development/ColorModePreference$a;

    .line 4127
    iget v3, v3, Lcom/android/settings/development/ColorModePreference$a;->a:I

    if-ne v3, v0, :cond_0

    .line 107
    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->c:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/settings/development/ColorModePreference;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/development/ColorModePreference;->setChecked(Z)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->a()V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->a()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public persistBoolean(Z)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/ColorModePreference$a;

    .line 120
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->b:Landroid/view/Display;

    .line 5127
    iget v1, p1, Lcom/android/settings/development/ColorModePreference$a;->a:I

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/Display;->requestColorMode(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/ColorModePreference;->c:I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
