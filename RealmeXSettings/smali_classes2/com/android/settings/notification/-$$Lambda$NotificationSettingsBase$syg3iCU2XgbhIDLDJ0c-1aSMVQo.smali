.class public final synthetic Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$syg3iCU2XgbhIDLDJ0c-1aSMVQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/NotificationSettingsBase;

.field private final synthetic f$1:Landroid/app/NotificationChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$syg3iCU2XgbhIDLDJ0c-1aSMVQo;->f$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$syg3iCU2XgbhIDLDJ0c-1aSMVQo;->f$1:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$syg3iCU2XgbhIDLDJ0c-1aSMVQo;->f$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$syg3iCU2XgbhIDLDJ0c-1aSMVQo;->f$1:Landroid/app/NotificationChannel;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->lambda$syg3iCU2XgbhIDLDJ0c-1aSMVQo(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
