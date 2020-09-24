.class final Lcom/android/settings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Lcom/android/sdk/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    invoke-interface {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/sdk/a;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    invoke-interface {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$a;->a(Lcom/android/sdk/a;)V

    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-boolean v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->f:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-boolean v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->g:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->a:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-boolean p1, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->f:Z

    .line 139
    iput-boolean p2, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->g:Z

    .line 140
    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f()V

    return-void
.end method
