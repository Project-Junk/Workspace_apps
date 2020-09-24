.class public Lcom/coloros/settings/feature/panel/AirplaneSlice;
.super Ljava/lang/Object;
.source "AirplaneSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 10

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    const v1, 0x7f0807ca

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    const v2, 0x7f120132

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v2

    .line 1129
    iget-object v3, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    const v4, 0x7f120a75

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/panel/AirplaneSlice;->c(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1133
    invoke-virtual {p0}, Lcom/coloros/settings/feature/panel/AirplaneSlice;->c()Landroid/content/Intent;

    move-result-object v5

    .line 1134
    iget-object v6, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 77
    invoke-static {v5, v0, v7, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 1139
    iget-object v5, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    .line 79
    invoke-static {v4, v6, v5}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 82
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object v6, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    .line 2096
    sget-object v7, Lcom/android/settings/slices/a;->a:Landroid/net/Uri;

    const-wide/16 v8, -0x1

    .line 82
    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 84
    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 86
    invoke-virtual {v5, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 2139
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNotifyChange newState="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirplaneSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/AirplaneSlice;->a:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/settings/slices/a;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
