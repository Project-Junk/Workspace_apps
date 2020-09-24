.class public Lcom/android/settings/wifi/LongPressAccessPointPreference;
.super Lcom/android/settingslib/wifi/AccessPointPreference;
.source "LongPressAccessPointPreference.java"


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;Landroidx/fragment/app/Fragment;)V
    .locals 6

    const v4, 0x7f080883

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;IZ)V

    .line 33
    iput-object p4, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 41
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    return-void
.end method
