.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$3;
.super Lcom/android/settings/search/a;
.source "ColorToggleScreenMagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 132
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/bc;->a(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f120fe1
        0x7f120089
    .end array-data
.end method


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v1, "screen_magnification"

    .line 140
    iput-object v1, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v1, 0x7f12007f

    .line 141
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 142
    invoke-static {p1, v1}, Lcom/coloros/settings/utils/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 144
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
