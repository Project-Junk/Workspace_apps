.class public final Lcom/android/settings/dream/CurrentDreamPicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "CurrentDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dream/CurrentDreamPicker$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/i/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/Map;Lcom/android/settingslib/i/a$a;)V
    .locals 1

    .line 92
    iget-object v0, p1, Lcom/android/settingslib/i/a$a;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settingslib/i/a$a;->d:Landroid/content/ComponentName;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$lRkaCOSeU5yARkklwpzuRAxZx8I(Ljava/util/Map;Lcom/android/settingslib/i/a$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dream/CurrentDreamPicker;->a(Ljava/util/Map;Lcom/android/settingslib/i/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker;->a:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$9r4pTrA2aEH-gI1ymBHoiJYNW_A;

    .line 75
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/dream/CurrentDreamPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 1089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1090
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPicker;->a:Lcom/android/settingslib/i/a;

    invoke-virtual {v1}, Lcom/android/settingslib/i/a;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$lRkaCOSeU5yARkklwpzuRAxZx8I;

    invoke-direct {v2, v0}, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$lRkaCOSeU5yARkklwpzuRAxZx8I;-><init>(Ljava/util/Map;)V

    .line 1091
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPicker;->a:Lcom/android/settingslib/i/a;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    const/4 v0, 0x1

    .line 1238
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 1239
    iget-object v3, v1, Lcom/android/settingslib/i/a;->a:Landroid/service/dreams/IDreamManager;

    if-eqz v3, :cond_1

    .line 1242
    :try_start_0
    new-array v3, v0, [Landroid/content/ComponentName;

    aput-object p1, v3, v2

    .line 1243
    iget-object v1, v1, Lcom/android/settingslib/i/a;->a:Landroid/service/dreams/IDreamManager;

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v1, v3}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1245
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to set active dream to "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DreamBackend"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker;->a:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->e()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public final getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150078

    return v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Lcom/android/settingslib/i/a;->a(Landroid/content/Context;)Lcom/android/settingslib/i/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/CurrentDreamPicker;->a:Lcom/android/settingslib/i/a;

    return-void
.end method
