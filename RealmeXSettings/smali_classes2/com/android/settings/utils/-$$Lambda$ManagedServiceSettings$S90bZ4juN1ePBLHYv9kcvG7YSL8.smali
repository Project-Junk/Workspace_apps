.class public final synthetic Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field private final synthetic f$1:Ljava/lang/CharSequence;

.field private final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v1, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$S90bZ4juN1ePBLHYv9kcvG7YSL8;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings;->lambda$S90bZ4juN1ePBLHYv9kcvG7YSL8(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
