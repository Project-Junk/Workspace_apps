.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/slices/SettingsSliceProvider;

.field private final synthetic f$1:Lcom/android/settings/core/a;

.field private final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/a;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;->f$1:Lcom/android/settings/core/a;

    iput-object p3, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object v1, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;->f$1:Lcom/android/settings/core/a;

    iget-object v2, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$aQdLTOFEDP1zwrX5cLyIIhfQpeo(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/a;Landroid/net/Uri;)V

    return-void
.end method
