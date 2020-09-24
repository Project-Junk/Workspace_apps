.class final Lcom/coloros/settings/ringtone/e$1;
.super Ljava/lang/Object;
.source "OppoRingtonePreferencesGroup.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/e;-><init>(Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/e;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/e;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    .line 1025
    iget-object v0, v0, Lcom/coloros/settings/ringtone/e;->c:Lcom/coloros/settings/ringtone/e$a;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    .line 2025
    iget-object v0, v0, Lcom/coloros/settings/ringtone/e;->a:Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    const/4 v1, -0x1

    .line 2080
    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2082
    invoke-virtual {v0, v3}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 2083
    iget-object v5, v0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->c:Lcom/color/support/preference/ColorMarkPreference;

    if-ne v5, v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    .line 3025
    iget-object v0, v0, Lcom/coloros/settings/ringtone/e;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    if-ltz v1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    .line 4025
    iget-object v0, v0, Lcom/coloros/settings/ringtone/e;->b:Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    .line 5025
    iget-object v0, v0, Lcom/coloros/settings/ringtone/e;->b:Ljava/util/List;

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/f;

    .line 43
    iget-object v1, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    .line 6025
    iget-object v1, v1, Lcom/coloros/settings/ringtone/e;->c:Lcom/coloros/settings/ringtone/e$a;

    .line 43
    iget-object v2, p0, Lcom/coloros/settings/ringtone/e$1;->a:Lcom/coloros/settings/ringtone/e;

    invoke-interface {v1, v2, v0, p1}, Lcom/coloros/settings/ringtone/e$a;->a(Lcom/coloros/settings/ringtone/e;Lcom/coloros/settings/ringtone/f;I)V

    :cond_2
    return-void
.end method
